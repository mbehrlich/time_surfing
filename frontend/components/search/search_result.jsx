import React from 'react';

const SearchResult = ({site}) => (
  <li>
    <article className="search-result">
      <figure className="mini-profile">
        <a href={"/#/users/" + site.id}><img src={site.profile ? site.profile : "http://res.cloudinary.com/dush6wf6z/image/upload/v1472768599/profile_default_nxjli6.png"} /></a>
      </figure>
      <section className="mini-info">
        <h3><a href={"/#/users/" + site.id}>{site.firstname} {site.lastname}</a></h3>
        <h4>{site.site.city}</h4>
        <h4>{site.year}</h4>
      </section>
      <section className="mini-accepting">
        {site.site.accepting_guests ? <span className="mini-accept">Accepting Guests</span> : <span className="mini-notacc">Not Accepting Guests</span>}
      </section>
    </article>
  </li>
);

export default SearchResult;
