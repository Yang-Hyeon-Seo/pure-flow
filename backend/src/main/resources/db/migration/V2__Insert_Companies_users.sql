INSERT INTO companies (name, business_number, company_password)
VALUES ('test_company', '123-45-67890', '1234');

INSERT INTO users (name, company_id, user_id, password, role)
VALUES ('test_user', 1, 'test_user', '1234', 'USER');