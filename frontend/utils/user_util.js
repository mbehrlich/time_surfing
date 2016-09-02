
export const fetchUser = (id, success, error) => {
  $.ajax({
    url: `api/users/${id}`,
    method: "GET",
    success,
    error
  });
}

export const updateUser = (id, newInfo, success, error) => {
  $.ajax({
    url: `api/users/${id}`,
    method: "PATCH",
    data: {user: newInfo},
    success,
    error
  });
};
