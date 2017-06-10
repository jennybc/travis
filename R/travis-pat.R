#' @export
travis_set_pat <- function(pat = NULL,
                           repo = github_repo(),
                           token = travis_token(repo),
                           repo_id = travis_repo_id(repo, token)) {
  pat <- github_create_pat(repo = repo, pat = pat)
  travis_set_var("GITHUB_PAT", pat, public = FALSE, token = token, repo_id = repo_id)
}