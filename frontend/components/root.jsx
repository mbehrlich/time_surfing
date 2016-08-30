import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRoute, hashHistory } from 'react-router';
import NavbarContainer from './navbar_container';
import Splash from './splash';

const Root = ({store}) => (
  <Provider store={store}>
    <div>
      <NavbarContainer />
      <Router history={ hashHistory }>
        <Route path="/" component={Splash} />
      </Router>
  </div>
  </Provider>
);

export default Root;
