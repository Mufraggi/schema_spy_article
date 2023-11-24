-- migrate:up

CREATE TABLE articles (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    title VARCHAR(255),
    content TEXT,
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- migrate:down

