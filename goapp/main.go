package main

import (
	"database/sql"
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"os"
	"strconv"

	_ "github.com/go-sql-driver/mysql"
	"github.com/gorilla/handlers"
	"github.com/gorilla/mux"
)

var db *sql.DB

type Vendor struct {
	VendorID     int     `json:"id"`
	Name         string  `json:"name"`
	Ratings      float64 `json:"ratings"`
	NoOfReviews  string  `json:"noOfReviews"`
	Listing      string  `json:"listing"`
	Logo         string  `json:"logo"`
	Price        string  `json:"price"`
	DeliveryTime string  `json:"deliveryTime"`
	DeliveryFee  string  `json:"deliveryFee"`
	Address      string  `json:"address"`
	Latitude     float64 `json:"latitude"`
	Longitude    float64 `json:"longitude"`
	Cuisine      string  `json:"cuisine"`
}

type Dish struct {
	DishID       int     `json:"id"`
	Name         string  `json:"name"`
	Description  string  `json:"description"`
	Price        float64 `json:"price"`
	Discount     float64 `json:"discount"`
	Image        string  `json:"image"`
	Availability bool    `json:"availability"`
	VendorID     int     `json:"vendorID"`
}

func main() {
	dbUser := os.Getenv("MYSQL_USER")
	dbPass := os.Getenv("MYSQL_PASSWORD")
	dbHost := os.Getenv("MYSQL_HOST")
	dbName := os.Getenv("MYSQL_DATABASE")

	dsn := fmt.Sprintf("%s:%s@tcp(%s:3306)/%s?charset=utf8mb4&parseTime=true", dbUser, dbPass, dbHost, dbName)
	var err error
	db, err = sql.Open("mysql", dsn)
	if err != nil {
		log.Fatalf("Error connecting to the database: %v", err)
	}

	if err := db.Ping(); err != nil {
		log.Fatalf("Database not reachable: %v", err)
	}

	router := mux.NewRouter()
	router.HandleFunc("/ping", ping).Methods("GET")
	router.HandleFunc("/vendors", getVendors).Methods("GET")
	router.HandleFunc("/dishes", getDishes).Methods("GET")
	router.HandleFunc("/vendors/{id}", getVendorByID).Methods("GET")
	router.HandleFunc("/dishes/vendors/{id}", getDishesByVendorID).Methods("GET")

	allowedOrigins := handlers.AllowedOrigins([]string{"http://localhost:5173"})
	allowedMethods := handlers.AllowedMethods([]string{"GET"})
	allowedHeaders := handlers.AllowedHeaders([]string{"Content-Type", "Authorization"})

	log.Fatal(http.ListenAndServe(":8080", handlers.CORS(allowedOrigins, allowedMethods, allowedHeaders)(router)))
}

func ping(w http.ResponseWriter, r *http.Request) {
	w.WriteHeader(http.StatusOK)
	w.Write([]byte("pong"))
}

func getVendors(w http.ResponseWriter, r *http.Request) {
	rows, err := db.Query(`SELECT id, name, ratings, noOfReviews, listing, logo, price, deliveryTime, deliveryFee, address, latitude, longitude, cuisine FROM vendors`)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
	defer rows.Close()

	var vendors []Vendor
	for rows.Next() {
		var v Vendor
		if err := rows.Scan(&v.VendorID, &v.Name, &v.Ratings, &v.NoOfReviews, &v.Listing, &v.Logo, &v.Price, &v.DeliveryTime, &v.DeliveryFee, &v.Address, &v.Latitude, &v.Longitude, &v.Cuisine); err != nil {
			http.Error(w, err.Error(), http.StatusInternalServerError)
			return
		}
		vendors = append(vendors, v)
	}

	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(vendors)
}

func getDishes(w http.ResponseWriter, r *http.Request) {
	rows, err := db.Query(`SELECT id, name, description, price, discount, image, availability, vendorID FROM dishes`)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
	defer rows.Close()

	var dishes []Dish
	for rows.Next() {
		var d Dish
		var availabilityInt int
		if err := rows.Scan(&d.DishID, &d.Name, &d.Description, &d.Price, &d.Discount, &d.Image, &availabilityInt, &d.VendorID); err != nil {
			http.Error(w, err.Error(), http.StatusInternalServerError)
			return
		}
		d.Availability = availabilityInt == 1
		dishes = append(dishes, d)
	}

	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(dishes)
}

func getVendorByID(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	idStr := vars["id"]
	id, err := strconv.Atoi(idStr)
	if err != nil {
		http.Error(w, "Invalid vendor ID", http.StatusBadRequest)
		return
	}

	var v Vendor
	err = db.QueryRow(`SELECT id, name, ratings, noOfReviews, listing, logo, price, deliveryTime, deliveryFee, address, latitude, longitude, cuisine 
                       FROM vendors WHERE id = ?`, id).
		Scan(&v.VendorID, &v.Name, &v.Ratings, &v.NoOfReviews, &v.Listing, &v.Logo, &v.Price, &v.DeliveryTime, &v.DeliveryFee, &v.Address, &v.Latitude, &v.Longitude, &v.Cuisine)
	if err == sql.ErrNoRows {
		http.Error(w, "Vendor not found", http.StatusNotFound)
		return
	} else if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(v)
}

func getDishesByVendorID(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	vendorIDStr := vars["id"]
	vendorID, err := strconv.Atoi(vendorIDStr)
	if err != nil {
		http.Error(w, "Invalid vendor ID", http.StatusBadRequest)
		return
	}

	rows, err := db.Query(`SELECT id, name, description, price, discount, image, availability, vendorID
                           FROM dishes WHERE vendorID = ?`, vendorID)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
	defer rows.Close()

	var dishes []Dish
	for rows.Next() {
		var d Dish
		var availabilityInt int
		if err := rows.Scan(&d.DishID, &d.Name, &d.Description, &d.Price, &d.Discount, &d.Image, &availabilityInt, &d.VendorID); err != nil {
			http.Error(w, err.Error(), http.StatusInternalServerError)
			return
		}
		d.Availability = availabilityInt == 1
		dishes = append(dishes, d)
	}

	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(dishes)
}
