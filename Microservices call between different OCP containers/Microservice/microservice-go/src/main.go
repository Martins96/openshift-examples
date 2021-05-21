package main

import (
    "fmt"
    "log"
    "net/http"
	"database/sql"
	_ "github.com/lib/pq"
	"os"
	"strconv"
)

var host     		= os.Getenv("MICRODB_SERVICE_HOST")
var portString	 	= os.Getenv("MICRODB_SERVICE_PORT")
var user     		= os.Getenv("POSTGRES_USER")
var password 		= os.Getenv("POSTGRES_PASSWORD")
var dbname   		= "test"

func handleRequests() {
    http.HandleFunc("/", homePage)
    log.Fatal(http.ListenAndServe(":5000", nil))
}

func main() {
	printEnv()
    handleRequests()
}

func homePage(w http.ResponseWriter, r *http.Request){
	
	port, errPort := strconv.Atoi(portString)
	if errPort != nil {
		fmt.Println("using default 5432")
		log.Print(fmt.Sprintf("MICRODB_SERVICE_PORT (default) %d", port))
		port = 5432
	}
	
    psqlconn := fmt.Sprintf("host=%s port=%d user=%s password=%s dbname=%s sslmode=disable", host, port, user, password, dbname)
    // open database
    db, err := sql.Open("postgres", psqlconn)
    CheckError(err)
    // close database
    defer db.Close()
	// check db
    err = db.Ping()
    CheckError(err)
 
    fmt.Fprintf(w, "Connected to: %s", host)
}

func printEnv() {
	log.Print("*** SYSTEM ENV ***")
	log.Print("MICRODB_SERVICE_HOST " + host)
	log.Print(fmt.Sprintf("MICRODB_SERVICE_PORT %s", portString))
	log.Print(fmt.Sprintf("POSTGRES_USER %s", user))
	log.Print(fmt.Sprintf("POSTGRES_PASSWORD %s", password))
	log.Print("dbname "+ dbname)
	log.Print("******************")
	
}

func CheckError(err error) {
    if err != nil {
        panic(err)
    }
}