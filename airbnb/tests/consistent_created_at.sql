{{
  config(
    severity = 'warn'
  )
}}

SELECT * 
FROM {{ ref('dim_listings_cleansed') }} x
INNER JOIN {{ ref('fct_reviews') }} y
USING (listing_id)
WHERE x.created_at > y.review_date