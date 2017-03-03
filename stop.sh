showHelp() {
  echo -e "usage: stop [--funk] [-h | --help]\n"
  echo    "    --funk                try to stop the funk"
  echo -e "    -h, --help            show help\n"
  echo    "Only accepts a single option."
}

unknownOption() {
  echo "Unknown option: --${OPTARG}"
  echo "usage: stop [--funk] [-h | --help]"
}

optspec=":h-:"
while getopts "$optspec" optchar; do
  case "${optchar}" in
    -)
      case "${OPTARG}" in
        funk)
          echo "Can't stop the funk."
          exit 0
          ;;
        help)
          showHelp
          exit 0
          ;;
        *)
          unknownOption
          exit 1
          ;;
      esac;;
    h)
      showHelp
      exit 0
      ;;
    *)
      unknownOption
      exit 1
      ;;
  esac
done

showHelp
