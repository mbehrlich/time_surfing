export const createUser = (user, success, error) => {
  $.ajax({
    url: "api/users",
    method: "POST",
    data: {user},
    success,
    error
  });
};

export const loginUser = (user, success, error) => {
  $.ajax({
    url: "api/session",
    method: "POST",
    data: {user},
    success,
    error
  });
};

export const logoutUser = (success, error) => {
  $.ajax({
    url: "api/session",
    method: "DELETE",
    success,
    error
  });
};
