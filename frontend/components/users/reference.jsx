import React from 'react';

const Reference = ({reference}) => {
  let creationDate = reference.created_at.slice(0, 10).split('-');
  creationDate = new Date(creationDate[0], creationDate[1] - 1, creationDate[2]);
  return (
    <article className="reference-item">
      <figure className="reference-pic">
        <a href={"/#/users/" + reference.author.id}><img src={reference.author.profile ? reference.author.profile : "http://res.cloudinary.com/dush6wf6z/image/upload/v1472768599/profile_default_nxjli6.png"} /></a>
      </figure>
      <section className="reference-main">
        <section className="reference-header">
          <h4><a href={"/#/users/" + reference.author.id}>{reference.author.firstname} {reference.author.lastname}</a></h4>
          <h4 className={reference.recommended ? "good-reference" : "bad-reference"} >{reference.recommended ? "Recommended" : "Not Recommended"}</h4>
          <h5>{reference.created_at.slice(0, 2) === "00" ? creationDate.toDateString().slice(0, 11) + creationDate.toDateString().slice(13) : creationDate.toDateString()}</h5>
        </section>
        <section className="reference-body">
          <p>{reference.body}</p>
        </section>
      </section>
    </article>
  );
};

export default Reference;
