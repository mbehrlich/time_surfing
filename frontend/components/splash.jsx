import React from 'react';
import { withRouter } from 'react-router';

const Splash = ({children}) => (
  <div>
    <div className="block-navbar"></div>
    {children}
    <section className="background">
      <main className="container">
        <header className="header">
          <h1 className="main-title">Stay with Locals and Meet Time Travelers</h1>
          <h3 className="secondary-title">Share authentic Time Travel Experiences</h3>
          <form>
            <input type="text" className="front-search" />
          </form>
        </header>
      </main>
    </section>
    <section className="testimonials">
      <article className="testimonial1 testimonial group" >
        <figure className="figure-left figure">
          <figcaption className="testimonial-caption">
            <h2>Explore the Past</h2>
            <button><strong>How it Works</strong></button>
          </figcaption>
        </figure>
        <aside className="testimonial-aside">
          <h5>connected with</h5>
          <div className="testimonial-symbol">
            <i className="material-icons">hourglass_empty</i>
          </div>
          <section className="testimonial-users group">
            <figure className="testimonial-user1 testimonial-user">
              <img src="assets/mcfly.JPG" />
              <figcaption>Marty</figcaption>
            </figure>
            <figure className="testimonial-user2 testimonial-user">
              <img src="assets/doc_brown.png" />
              <figcaption>Doc Brown</figcaption>
            </figure>
          </section>
          <p className="testimonial-location">
            in Hill Valley, 1955
          </p>
          <div className="testimonial-line"></div>
          <p className="testimonial-description">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </aside>
      </article>
      <article className="testimonial2 testimonial  group">
        <aside className="testimonial-aside">
          <h5>connected with</h5>
          <i className="material-icons">hourglass_empty</i>
          <section className="testimonial-users group">
            <figure className="testimonial-user1 testimonial-user">
              <img src="assets/Bill.jpg" />
              <figcaption>Bill</figcaption>
            </figure>
            <figure className="testimonial-user2 testimonial-user">
              <img src="assets/ted.png" />
              <figcaption>Ted</figcaption>
            </figure>
          </section>
          <p className="testimonial-location">
            in San Dimas, 1989
          </p>
          <div className="testimonial-line"></div>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </aside>
        <figure className="figure-right figure">
          <figcaption className="testimonial-caption">
            <h2>Visit the Future</h2>
            <button><strong>Safety</strong></button>
          </figcaption>
        </figure>

      </article>
    </section>
  </div>

);

export default withRouter(Splash);
