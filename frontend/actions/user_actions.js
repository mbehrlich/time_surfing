export const USER_CONSTANTS = {
  REQUEST_USER: "REQUEST_USER",
  RECEIVE_OTHER_USER: "RECEIVE_OTHER_USER",
  RECEIVE_USER_ERRORS: "RECEIVE_USER_ERRORS"
};

export const requestUser = (id) => ({
  type: USER_CONSTANTS.REQUEST_USER,
  id
});

export const receiveOtherUser = (user) => ({
  type: USER_CONSTANTS.RECEIVE_OTHER_USER,
  user
});

export const receiveUserErrors = (errors) => ({
  type: USER_CONSTANTS.RECEIVE_USER_ERRORS,
  errors
});
