# This is the root backend file for the backend to DRY

remote_state {
  backend = "gcs"
  config = {
    project  = "august-button-389109"
    #location = "us"
    bucket   = "rt_poc_bucket1"
    prefix   = "${basename(get_parent_terragrunt_dir())}/${path_relative_to_include()}"
    #credentials = "august-button-389109-02c678988934.json" 
  }
}