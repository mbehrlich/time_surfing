export const updateSite = (id, newInfo, success, error) => {
  $.ajax({
    url: `api/sites/${id}`,
    method: "PATCH",
    data: {site: newInfo},
    success,
    error
  });
};

export const fetchSites = (filters, success, error) => {

  $.ajax({
    url: 'api/location',
    method: "GET",
    data: filters,
    success,
    error
  });
}
