CREATE TABLE IF NOT EXISTS users (
		email VARCHAR(255) NOT NULL PRIMARY KEY,
		password VARCHAR(255) NOT NULL,
		balance DECIMAL(10,2) NOT NULL
		);

CREATE TABLE IF NOT EXISTS transactions (
		id UUID NOT NULL PRIMARY KEY DEFAULT gen_random_uuid(),
		sender VARCHAR(255) NOT NULL,
		receiver VARCHAR(255) NOT NULL,
		amount DECIMAL(10,2) NOT NULL,
		FOREIGN KEY (sender) REFERENCES users(email),
		FOREIGN KEY (receiver) REFERENCES users(email)
	);

INSERT INTO users (email, password, balance) VALUES ('Patricia.Johnson@gmail.com', '123456', '58.21');
INSERT INTO users (email, password, balance) VALUES ('Pete.Jones@gmail.com', '123456', '922.39');
INSERT INTO users (email, password, balance) VALUES ('Paul.Davis@gmail.com', '123456', '623.78');
INSERT INTO users (email, password, balance) VALUES ('Dorothy.Taylor@gmail.com', '123456', '694.23');
INSERT INTO users (email, password, balance) VALUES ('Linda.Moore@gmail.com', '123456', '181.42');
INSERT INTO users (email, password, balance) VALUES ('Dorothy.Miller@gmail.com', '123456', '421.10');
INSERT INTO users (email, password, balance) VALUES ('Linda.Taylor@gmail.com', '123456', '995.21');
INSERT INTO users (email, password, balance) VALUES ('Pete.Wilson@gmail.com', '123456', '419.49');
INSERT INTO users (email, password, balance) VALUES ('Pete.Moore@gmail.com', '123456', '553.61');
INSERT INTO users (email, password, balance) VALUES ('George.Johnson@gmail.com', '123456', '685.67');
INSERT INTO users (email, password, balance) VALUES ('Ringo.Wilson@gmail.com', '123456', '881.24');
INSERT INTO users (email, password, balance) VALUES ('Paul.Wilson@gmail.com', '123456', '424.33');
INSERT INTO users (email, password, balance) VALUES ('Mary.Jones@gmail.com', '123456', '875.39');
INSERT INTO users (email, password, balance) VALUES ('Ringo.Davis@gmail.com', '123456', '13.48');
INSERT INTO users (email, password, balance) VALUES ('Paul.Jones@gmail.com', '123456', '548.59');
INSERT INTO users (email, password, balance) VALUES ('Mary.Moore@gmail.com', '123456', '119.27');
INSERT INTO users (email, password, balance) VALUES ('Paul.Williams@gmail.com', '123456', '200.81');
INSERT INTO users (email, password, balance) VALUES ('Paul.Taylor@gmail.com', '123456', '675.28');
INSERT INTO users (email, password, balance) VALUES ('John.Smith@gmail.com', '123456', '20.14');
INSERT INTO users (email, password, balance) VALUES ('Ringo.Miller@gmail.com', '123456', '941.80');
INSERT INTO users (email, password, balance) VALUES ('Ringo.Brown@gmail.com', '123456', '666.50');
INSERT INTO users (email, password, balance) VALUES ('Margaret.Miller@gmail.com', '123456', '353.21');
INSERT INTO users (email, password, balance) VALUES ('Jennifer.Smith@gmail.com', '123456', '567.60');
INSERT INTO users (email, password, balance) VALUES ('Ringo.Taylor@gmail.com', '123456', '680.98');
INSERT INTO users (email, password, balance) VALUES ('George.Moore@gmail.com', '123456', '624.30');
INSERT INTO users (email, password, balance) VALUES ('Maria.Taylor@gmail.com', '123456', '696.81');
INSERT INTO users (email, password, balance) VALUES ('Mary.Taylor@gmail.com', '123456', '554.63');
INSERT INTO users (email, password, balance) VALUES ('Pete.Taylor@gmail.com', '123456', '228.06');
INSERT INTO users (email, password, balance) VALUES ('Margaret.Brown@gmail.com', '123456', '8.54');
INSERT INTO users (email, password, balance) VALUES ('Paul.Brown@gmail.com', '123456', '605.52');
INSERT INTO users (email, password, balance) VALUES ('Pete.Smith@gmail.com', '123456', '592.63');
INSERT INTO users (email, password, balance) VALUES ('George.Miller@gmail.com', '123456', '829.02');
INSERT INTO users (email, password, balance) VALUES ('Elizabeth.Taylor@gmail.com', '123456', '364.94');
INSERT INTO users (email, password, balance) VALUES ('George.Williams@gmail.com', '123456', '211.79');
INSERT INTO users (email, password, balance) VALUES ('Paul.Johnson@gmail.com', '123456', '342.32');
INSERT INTO users (email, password, balance) VALUES ('Margaret.Smith@gmail.com', '123456', '227.22');
INSERT INTO users (email, password, balance) VALUES ('Dorothy.Williams@gmail.com', '123456', '671.22');
INSERT INTO users (email, password, balance) VALUES ('Linda.Davis@gmail.com', '123456', '98.75');
INSERT INTO users (email, password, balance) VALUES ('Dorothy.Brown@gmail.com', '123456', '499.17');
INSERT INTO users (email, password, balance) VALUES ('Barbara.Miller@gmail.com', '123456', '619.25');
INSERT INTO users (email, password, balance) VALUES ('John.Wilson@gmail.com', '123456', '515.18');
INSERT INTO users (email, password, balance) VALUES ('Margaret.Wilson@gmail.com', '123456', '943.42');
INSERT INTO users (email, password, balance) VALUES ('Mary.Wilson@gmail.com', '123456', '325.72');
INSERT INTO users (email, password, balance) VALUES ('Jennifer.Brown@gmail.com', '123456', '113.98');
INSERT INTO users (email, password, balance) VALUES ('Barbara.Jones@gmail.com', '123456', '846.65');
INSERT INTO users (email, password, balance) VALUES ('Ringo.Moore@gmail.com', '123456', '190.84');
INSERT INTO users (email, password, balance) VALUES ('Ringo.Johnson@gmail.com', '123456', '493.87');
INSERT INTO users (email, password, balance) VALUES ('Maria.Wilson@gmail.com', '123456', '302.29');
INSERT INTO users (email, password, balance) VALUES ('Barbara.Taylor@gmail.com', '123456', '856.00');
INSERT INTO users (email, password, balance) VALUES ('Ringo.Williams@gmail.com', '123456', '142.90');
INSERT INTO users (email, password, balance) VALUES ('Dorothy.Jones@gmail.com', '123456', '886.39');
INSERT INTO users (email, password, balance) VALUES ('Barbara.Davis@gmail.com', '123456', '238.69');
INSERT INTO users (email, password, balance) VALUES ('George.Wilson@gmail.com', '123456', '953.34');
INSERT INTO users (email, password, balance) VALUES ('Maria.Brown@gmail.com', '123456', '799.95');
INSERT INTO users (email, password, balance) VALUES ('John.Jones@gmail.com', '123456', '365.74');
INSERT INTO users (email, password, balance) VALUES ('Barbara.Wilson@gmail.com', '123456', '131.18');
INSERT INTO users (email, password, balance) VALUES ('Maria.Davis@gmail.com', '123456', '41.81');
INSERT INTO users (email, password, balance) VALUES ('Pete.Brown@gmail.com', '123456', '231.42');
INSERT INTO users (email, password, balance) VALUES ('Maria.Williams@gmail.com', '123456', '439.73');
INSERT INTO users (email, password, balance) VALUES ('Patricia.Miller@gmail.com', '123456', '741.99');
INSERT INTO users (email, password, balance) VALUES ('Margaret.Johnson@gmail.com', '123456', '363.98');
INSERT INTO users (email, password, balance) VALUES ('Dorothy.Wilson@gmail.com', '123456', '726.95');
INSERT INTO users (email, password, balance) VALUES ('Linda.Williams@gmail.com', '123456', '203.64');
INSERT INTO users (email, password, balance) VALUES ('Elizabeth.Moore@gmail.com', '123456', '337.25');
INSERT INTO users (email, password, balance) VALUES ('Elizabeth.Miller@gmail.com', '123456', '748.16');
INSERT INTO users (email, password, balance) VALUES ('Elizabeth.Brown@gmail.com', '123456', '322.93');
INSERT INTO users (email, password, balance) VALUES ('Mary.Davis@gmail.com', '123456', '828.89');
INSERT INTO users (email, password, balance) VALUES ('Susan.Taylor@gmail.com', '123456', '591.48');
INSERT INTO users (email, password, balance) VALUES ('Elizabeth.Johnson@gmail.com', '123456', '409.43');
INSERT INTO users (email, password, balance) VALUES ('Dorothy.Smith@gmail.com', '123456', '605.16');
INSERT INTO users (email, password, balance) VALUES ('Dorothy.Davis@gmail.com', '123456', '595.52');
INSERT INTO users (email, password, balance) VALUES ('Ringo.Smith@gmail.com', '123456', '216.66');
INSERT INTO users (email, password, balance) VALUES ('George.Taylor@gmail.com', '123456', '657.24');
INSERT INTO users (email, password, balance) VALUES ('Dorothy.Johnson@gmail.com', '123456', '774.01');
INSERT INTO users (email, password, balance) VALUES ('Margaret.Davis@gmail.com', '123456', '734.14');
INSERT INTO users (email, password, balance) VALUES ('Patricia.Davis@gmail.com', '123456', '344.92');
INSERT INTO users (email, password, balance) VALUES ('Linda.Miller@gmail.com', '123456', '64.14');
INSERT INTO users (email, password, balance) VALUES ('Jennifer.Johnson@gmail.com', '123456', '350.63');
INSERT INTO users (email, password, balance) VALUES ('John.Miller@gmail.com', '123456', '254.79');
INSERT INTO users (email, password, balance) VALUES ('Patricia.Smith@gmail.com', '123456', '527.14');
INSERT INTO users (email, password, balance) VALUES ('Patricia.Taylor@gmail.com', '123456', '353.63');
INSERT INTO users (email, password, balance) VALUES ('Pete.Miller@gmail.com', '123456', '488.12');
INSERT INTO users (email, password, balance) VALUES ('Patricia.Moore@gmail.com', '123456', '744.12');
INSERT INTO users (email, password, balance) VALUES ('Susan.Williams@gmail.com', '123456', '939.97');
INSERT INTO users (email, password, balance) VALUES ('Barbara.Brown@gmail.com', '123456', '158.25');
INSERT INTO users (email, password, balance) VALUES ('Mary.Miller@gmail.com', '123456', '714.56');
INSERT INTO users (email, password, balance) VALUES ('Mary.Smith@gmail.com', '123456', '684.12');
INSERT INTO users (email, password, balance) VALUES ('Susan.Davis@gmail.com', '123456', '480.90');
INSERT INTO users (email, password, balance) VALUES ('Linda.Wilson@gmail.com', '123456', '334.16');
INSERT INTO users (email, password, balance) VALUES ('Pete.Johnson@gmail.com', '123456', '399.42');
INSERT INTO users (email, password, balance) VALUES ('Susan.Smith@gmail.com', '123456', '327.44');
INSERT INTO users (email, password, balance) VALUES ('Elizabeth.Wilson@gmail.com', '123456', '87.12');
INSERT INTO users (email, password, balance) VALUES ('George.Brown@gmail.com', '123456', '421.31');
INSERT INTO users (email, password, balance) VALUES ('Jennifer.Davis@gmail.com', '123456', '454.79');
INSERT INTO users (email, password, balance) VALUES ('Maria.Jones@gmail.com', '123456', '950.31');
INSERT INTO users (email, password, balance) VALUES ('Susan.Moore@gmail.com', '123456', '640.71');
INSERT INTO users (email, password, balance) VALUES ('John.Brown@gmail.com', '123456', '242.88');
INSERT INTO users (email, password, balance) VALUES ('Linda.Jones@gmail.com', '123456', '873.25');
INSERT INTO users (email, password, balance) VALUES ('Mary.Williams@gmail.com', '123456', '947.82');
INSERT INTO users (email, password, balance) VALUES ('Susan.Jones@gmail.com', '123456', '860.22');
