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
            <input type="text" />
          </form>
        </header>
      </main>
    </section>
    <section className="testimonials">
      <article className="testimonial1">
        <figure>
          <figcaption>
            <h2>Explore the Past</h2>
            <button>How it Works</button>
          </figcaption>
        </figure>
        <aside>
          <h5>connected with</h5>
          <i className="material-icons">hourglass_empty</i>
          <figure>
            <img src="" />
            <figcaption>Marty</figcaption>
          </figure>
          <figure>
            <img src="" />
            <figcaption>Doc Brown</figcaption>
          </figure>
          <p className="testimonial-location">
            in Hill Valley, 1955
          </p>
          <div className="testimonial-line"></div>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </aside>
      </article>
      <article className="testimonial2">
        <aside></aside>
        <figure>
          <figcaption>
            <h2>Visit the Future</h2>
            <button>Safety</button>
          </figcaption>
        </figure>
        <aside>
          <h5>connected with</h5>
          <i className="material-icons">hourglass_empty</i>
          <figure>
            <img src="" />
            <figcaption>Bill</figcaption>
          </figure>
          <figure>
            <img src="" />
            <figcaption>Ted</figcaption>
          </figure>
          <p className="testimonial-location">
            in San Dimas, 1989
          </p>
          <div className="testimonial-line"></div>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </aside>
      </article>
    </section>
  </div>

);

export default withRouter(Splash);
