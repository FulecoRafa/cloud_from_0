package main;

import (
	"fmt"
	"os"
	"time"
	"math/rand"
)

type User struct {
	Email string
	Password string
	Balance string
}

func newUser(email string, password string) User {
	return User{email, password, "0.00"}
}


var randomNames = [...]string{
	"John", "Paul", "George", "Ringo", "Pete", "John", "Paul", "George", "Ringo", "Pete",
	"Mary", "Patricia", "Linda", "Barbara", "Elizabeth", "Jennifer", "Maria", "Susan", "Margaret", "Dorothy",
}

var randomSurnames = [...]string{
	"Smith", "Johnson", "Williams", "Jones", "Brown", "Davis", "Miller", "Wilson", "Moore", "Taylor",
}

func generateDummyUsers(n uint) []User {
	users := make([]User, n)
	for i := uint(0); i < n; i++ {
		name := randomNames[rand.Intn(len(randomNames))]
		surname := randomSurnames[rand.Intn(len(randomSurnames))]
		email := name + "." + surname + "@gmail.com"
		password := "123456"
		users[i] = newUser(email, password)
		// Create a user balance between 0 and 1000
		// Should be a string of precision 2
		users[i].Balance = fmt.Sprintf("%.2f", rand.Float64() * 1000)
	}
	return users
}

func main() {
	rand.Seed(time.Now().UnixNano())
	// Generate data on `data.sql`
	file, err := os.Create("data.sql")
	if err != nil {
		panic(err)
	}
	defer file.Close()

	// Generate SQL to create users table
	users_table := `CREATE TABLE IF NOT EXISTS users (
		email VARCHAR(255) NOT NULL PRIMARY KEY,
		password VARCHAR(255) NOT NULL,
		balance DECIMAL(10,2) NOT NULL
	);`
	fmt.Fprintln(file, users_table)
	fmt.Fprintln(file, "")
	users := generateDummyUsers(100)
	for _, user := range users {
		fmt.Fprintf(file, "INSERT INTO users (email, password, balance) VALUES ('%s', '%s', '%s');\n", user.Email, user.Password, user.Balance)
	}

	// Create a table to store the transactions
	fmt.Fprintln(file, "")
	transactions_table := `CREATE TABLE IF NOT EXISTS transactions (
		id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		sender VARCHAR(255) NOT NULL,
		receiver VARCHAR(255) NOT NULL,
		amount DECIMAL(10,2) NOT NULL,
		FOREIGN KEY (sender) REFERENCES users(email),
		FOREIGN KEY (receiver) REFERENCES users(email)
	);`
	fmt.Fprintln(file, transactions_table)

}
