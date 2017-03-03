optspec=":-:"
while getopts "$optspec" optchar; do
  case "${optchar}" in
    -)
      case "${OPTARG}" in
        funk)
          echo "Can't stop the funk." >&2
          ;;
        *)
          echo "Unknown option: --${OPTARG}" >&2
          echo "usage: $0 [--funk]" >&2
          ;;
      esac;;
    *)
      echo "Unknown option: --${OPTARG}" >&2
      echo "usage: $0 [--funk]" >&2
      ;;
  esac
done
