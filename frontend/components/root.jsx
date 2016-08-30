import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRoute, hashHistory } from 'react-router';
import NavbarContainer from './navbar_container';
import Splash from './splash';
import LoginContainer from './auth/login_container';
import JoinContainer from './auth/join_container';

const Root = ({store}) => (
  <Provider store={store}>
    <div>
      <NavbarContainer />
      <Router history={ hashHistory }>
        <Route path="/" component={Splash} >
          <Route path="/login" component={LoginContainer} />
          <Route path="/join" component={JoinContainer} />
        </Route>
      </Router>
  </div>
  </Provider>
);

export default Root;