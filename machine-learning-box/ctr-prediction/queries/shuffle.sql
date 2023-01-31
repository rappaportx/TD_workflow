select
  *,
  -- stratified sampling
  count(1) over (partition by label) as per_label_count,
  rank() over (partition by label order by rand()) as rank_in_label
from
  ${source}
