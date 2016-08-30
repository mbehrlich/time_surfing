import React from 'react';
import { withRouter } from 'react-router';

const Splash = ({children}) => (
  <main className="container">
    <header className="header">
      <h1>Timesurfing</h1>
    </header>
    {children}
  </main>

);

export default withRouter(Splash);
