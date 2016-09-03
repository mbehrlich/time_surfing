

const LoadingReducer = (state = false, action) => {
  switch (action.type) {
    case "REQUEST_USER":
    case "UPDATE_USER":
    case "LOGIN_USER":
    case "CREATE_USER":
    case "UPDATE_SITE":
    case "REQUEST_SITES":
      return true;
    case "RECEIVE_USER":
    case "RECEIVE_ERRORS":
    case "RECEIVE_OTHER_USER":
    case "RECEIVE_USER_ERRORS":
    case "LOGOUT_USER":
    case "RECEIVE_SITES":
    case "RECEIVE_SITE_ERRORS":
      return false;
    default:
      return state;
  }
};

export default LoadingReducer;
