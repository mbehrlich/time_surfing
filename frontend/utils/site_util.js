export const updateSite = (id, newInfo, success, error) => {
  $.ajax({
    url: `api/sites/${id}`,
    method: "PATCH",
    data: {site: newInfo},
    success,
    error
  });
};
