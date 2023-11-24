-- migrate:up

CREATE TABLE tags (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    label VARCHAR(50) UNIQUE
);

CREATE TABLE article_tag (
    article_id UUID REFERENCES articles(id),
    tag_id UUID REFERENCES tags(id),
    PRIMARY KEY (article_id, tag_id)
);

-- migrate:down

