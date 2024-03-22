GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color
CHECKMARK='\u2714'
BALLOT_X='\u2717'

printgreen() {
    printf "${GREEN}${1}${NC}\n"
}
printblue() {
    printf "${BLUE}${1}${NC}\n"
}

printred() {
    printf "${RED}${1}${NC}\n"
}

printok() {
    printgreen "${CHECKMARK} ${1}"
}

printfail() {
    printred "${BALLOT_X} ${1}"
}

get_latest_github_release()
{
  local github_url=$1"/releases/latest"
  local latestversion=$(curl -sI $github_url | grep -F "location:" | sed 's/location\: //' | tr -d '\r' | xargs basename)
  echo ${latestversion}
}
