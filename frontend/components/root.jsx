import React from 'react';
import { Provider } from 'react-redux';
import { Router, Route, IndexRoute, hashHistory } from 'react-router';
import NavbarContainer from './navbar_container';
import Splash from './splash';
import LoginContainer from './auth/login_container';
import JoinContainer from './auth/join_container';

class Root extends React.Component {
  constructor(props) {
    super(props)
    this.ensureNotLogin = this.ensureNotLogin.bind(this);
  }

  ensureNotLogin(nextState, replace) {
    if (this.props.store.getState().session.currentUser) {
      replace('/');
    }
  }

  render() {
    return (
      <Provider store={this.props.store}>
        <div>
          <NavbarContainer />
          <Router history={ hashHistory }>
            <Route path="/" component={Splash} >
              <Route path="/login" component={LoginContainer} onEnter={this.ensureNotLogin} />
              <Route path="/join" component={JoinContainer} onEnter={this.ensureNotLogin} />
            </Route>
          </Router>
      </div>
      </Provider>
    );
  }
}



export default Root;
