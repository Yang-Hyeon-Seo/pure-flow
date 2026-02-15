--회사 테이블 생성
CREATE TABLE companies(
    id SERIAL PRIMARY KEY ,
    name VARCHAR(100) NOT NULL,
    business_number VARCHAR(20) UNIQUE,
    company_password VARCHAR(255) NOT NULL,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

--유저 테이블 생성
CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    user_id VARCHAR(255) NOT NULL UNIQUE,
    company_id INTEGER NOT NULL REFERENCES companies(id),
    password VARCHAR(255) NOT NULL,
    name VARCHAR(50),
    role VARCHAR(20) NOT NULL,
    is_deleted BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

--인덱스
CREATE INDEX idx_user_id ON users(user_id);
CREATE INDEX idx_user_company_id ON users(company_id);