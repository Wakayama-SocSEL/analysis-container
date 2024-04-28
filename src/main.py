from functools import partial
from socsel import autorun, fetch_repos_from_ranking

# sample
autorun(
    partial(fetch_repos_from_ranking, lang='java'),
    load = None,
    save = 'java',
    process = 1
)
