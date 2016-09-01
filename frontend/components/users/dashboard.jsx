import React from 'react';
import { hashHistory } from 'react-router';

class Dashboard extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidUpdate() {
    if (!this.props.currentUser){
      hashHistory.push("/");
    }
  }

  render() {
    return (
      <div>dashboard</div>
    );
  }
}

export default Dashboard;
