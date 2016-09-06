import React from 'react';

const Reference = ({reference}) => {
  console.log(reference);
  return (
    <article className="reference-item">
      <figure className="reference-pic">
        <img src={reference.author.profile ? reference.author.profile : "http://res.cloudinary.com/dush6wf6z/image/upload/v1472768599/profile_default_nxjli6.png"} />
      </figure>
      <section className="reference-main">
        <section className="reference-header">
          <h4>{reference.author.firstname} {reference.author.lastname}</h4>
          <h4 className={reference.recommended ? "good-reference" : "bad-reference"} >{reference.recommended ? "Recommended" : "Not Recommended"}</h4>
          <h5>{reference.created_at}</h5>
        </section>
        <section className="reference-body">
          <p>{reference.body}</p>
        </section>
      </section>
    </article>
  );
};

export default Reference;
