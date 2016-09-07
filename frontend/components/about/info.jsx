import React from 'react';

const Info = ({children}) => (
  <div>
    <div className="block-navbar"></div>
    <main className="about-container">
      <section className="about-header">
        <h1 className="about-title">SAFETY NOT GUARANTEED</h1>
      </section>
      <section className="about-main">
        <aside className="about-nav">
          <ul>
            <li><a href="/#/about">About</a></li>
            <li><a href="/#/about/howitworks">How It Works</a></li>
            <li><a href="/#/about/safety">Safety</a></li>
          </ul>
        </aside>
        <article className="about-body">
          {children}
        </article>
      </section>
    </main>
  </div>
);

export default Info;
