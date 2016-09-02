

const LoadingReducer = (state = false, action) => {
  switch (action.type) {
    case "REQUEST_USER":
    case "UPDATE_USER":
    case "LOGIN_USER":
    case "CREATE_USER":
      return true;
    case "RECEIVE_USER":
    case "RECEIVE_ERRORS":
    case "RECEIVE_OTHER_USER":
    case "RECEIVE_USER_ERRORS":
    case "LOGOUT_USER":
      return false;
    default:
      return state;
  }
};

export default LoadingReducer;
