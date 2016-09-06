export const fetchReferences = (id, success, error) => {
  $.ajax({
    url: `api/users/${id}/references`,
    method: "GET",
    success,
    error
  });
};

export const createReference = (id, reference, success, error) => {
  $.ajax({
    url: `api/users/${id}/references`,
    method: "POST",
    data: {reference},
    success,
    error
  });
};
