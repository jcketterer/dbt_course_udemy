select
    *
from {{ ref('dim_listings_cleansed') }} l
inner join {{ ref('fct_reviews') }} r
    on r.listing_id = l.listing_id --USING (listing_id)
where created_at >= review_date