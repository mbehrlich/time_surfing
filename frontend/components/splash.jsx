import React from 'react';
import { withRouter } from 'react-router';
import { hashHistory } from 'react-router';

class Splash extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      lat: this.props.spacetime.lat,
      lng: this.props.spacetime.lng,
      location: "",
      start_date: this.props.spacetime.start_date,
      end_date: this.props.spacetime.end_date,
      era: this.props.spacetime.era
    };
    this.search = this.search.bind(this);
    this.updateSearch = this.updateSearch.bind(this);
    this.updateEra = this.updateEra.bind(this);
  }

  componentDidMount() {
    this.input = document.getElementById('front-search')
    let options = {types: ['(cities)']};
    this.autocomplete = new google.maps.places.Autocomplete(this.input, options);
    this.autocomplete.addListener('place_changed', this.search);
  }

  handleSubmit(e) {
    e.preventDefault();
  }

  componentDidUpdate() {
    if (this.props.currentUser){
      hashHistory.push("/dashboard");
    }
  }

  search() {
    let place = this.autocomplete.getPlace();
    if (place.geometry) {
      this.setState({
        // location: place.query,
        lat: place.geometry.location.lat(),
        lng: place.geometry.location.lng(),
        location: ""
      });
      this.props.updateSpacetime(this.state);
      hashHistory.push("/location_search");
    } else {
      let service = new google.maps.places.AutocompleteService();
      let placeService = new google.maps.places.PlacesService(this.input);
      let placeRequest = (predictions, status) => {
        let request = { placeId: predictions[0].place_id };
        placeService.getDetails(request, (details) => {
          this.setState({
            lat: details.geometry.location.lat(),
            lng: details.geometry.location.lng(),
            location: ""
          });
          this.props.updateSpacetime(this.state);
          hashHistory.push("/location_search");
        });
      };
      service.getQueryPredictions({input: this.input.value}, placeRequest);
    }
  }

  updateSearch(e) {
    this.setState({location: e.target.value});
  }

  updateEra(e) {
    let eraMapping = {
      All_Time: ["-2000-01-01", "3000-12-31"],
      Antiquity: ["-2000-01-01", "0450-12-31"],
      Middle_Ages: ["0451-01-01", "1400-12-31"],
      Renaissance: ["1401-01-01", "1700-12-31"],
      Enlightenment: ["1701-01-01", "1860-12-31"],
      Modern_Era: ["1861-01-01", "2017-12-31"],
      Space_Age: ["2018-01-01", "2430-12-31"],
      Post_Apocalypse: ["2431-01-01", "3000-12-31"]
    }
    let newSpacetime = {
      era: e.target.value,
      start_date: eraMapping[e.target.value][0],
      end_date: eraMapping[e.target.value][1]
    };
    this.setState(newSpacetime, () => {
      this.props.updateSpacetime(this.state)
    });
  }

  render() {
    return (
      <div>
        <div className="block-navbar"></div>
        {this.props.children}
        <section className="background">
          <main className="container">
            <header className="header">
              <div className="splash-titles">
                <h1 className="main-title">Stay with Locals and Meet Time Travelers</h1>
                <h3 className="secondary-title">Share authentic Time Travel Experiences</h3>
              </div>
              <form onSubmit={this.handleSubmit} >
                <input type="text" id="front-search" className="front-search" placeholder="Where do you want to go?" value={this.state.location} onChange={this.updateSearch} />
                <select className="era-select" value={this.state.era} onChange={this.updateEra}>
                  <option value="All_Time" >All Time</option>
                  <option value="Antiquity" >Antiquity</option>
                  <option value="Middle_Ages" >Middle Ages</option>
                  <option value="Renaissance" >Renaissance</option>
                  <option value="Enlightenment">Enlightenment</option>
                  <option value="Modern_Era" >Modern Era</option>
                  <option value="Space_Age" >Space Age</option>
                  <option value="Post_Apocalypse" >Post-Apocalypse</option>
                </select>
              </form>
            </header>
          </main>
        </section>
        <section className="testimonials">
          <article className="testimonial1 testimonial group" >
            <figure className="figure-left figure">
              <figcaption className="testimonial-caption">
                <h2>Explore the Past</h2>
                <a href="/#/about/howitworks"><button><strong>How it Works</strong></button></a>
              </figcaption>
            </figure>
            <aside className="testimonial-aside">
              <h5>connected with</h5>
              <div className="testimonial-symbol">
                <i className="material-icons">hourglass_empty</i>
              </div>
              <section className="testimonial-users group">
                <figure className="testimonial-user1 testimonial-user">
                  <img src="http://res.cloudinary.com/dush6wf6z/image/upload/v1472768592/mcfly_dulxaw.jpg" />
                  <figcaption>Marty</figcaption>
                </figure>
                <figure className="testimonial-user2 testimonial-user">
                  <img src="http://res.cloudinary.com/dush6wf6z/image/upload/v1472768597/doc_brown_xz9jjg.png" />
                  <figcaption>Doc Brown</figcaption>
                </figure>
              </section>
              <p className="testimonial-location">
                in Hill Valley, 1955
              </p>
              <div className="testimonial-line"></div>
              <p className="testimonial-description">I stayed with Doc for a week in 1955 and another time in 1885. It was heavy, I had to make sure my parents got together or I wouldn't have been born. But Doc is great, he has a lot of cool things in his house like a gigantic amplifier and a flying, time traveling DeLorean. The only problem is that every time I visit, I have a really tough time getting back to 1985. Actually, it was a little weird staying with him, I accidentally kissed my mother and wrote the song Johnny Be Good.</p>
            </aside>
          </article>
          <article className="testimonial2 testimonial  group">
            <aside className="testimonial-aside">
              <h5>connected with</h5>
                <div className="testimonial-symbol">
                  <i className="material-icons">hourglass_empty</i>
                </div>
                <section className="testimonial-users group">
                  <figure className="testimonial-user1 testimonial-user">
                    <img src="http://res.cloudinary.com/dush6wf6z/image/upload/v1472768591/Bill_d9vzzg.jpg" />
                    <figcaption>Bill</figcaption>
                  </figure>
                  <figure className="testimonial-user2 testimonial-user">
                    <img src="http://res.cloudinary.com/dush6wf6z/image/upload/v1472768614/ted_no40js.png" />
                    <figcaption>Ted</figcaption>
                  </figure>
                </section>
              <p className="testimonial-location">
                in San Dimas, 1989
              </p>
              <div className="testimonial-line"></div>
              <p>Dude! Me and my most esteemed colleague, Ted, went on a most excellent adventure through all of history. We met some of the greatest leaders who ever lived, like Genghis Khan, Joan of Arc, and Socratic Method. We also let Napoleon stay at our house, but he was a most heinous guest. We traveled through time, met a lot of great leaders, and got an A on our history report. Excellent!</p>
            </aside>
            <figure className="figure-right figure">
              <figcaption className="testimonial-caption">
                <h2>Visit the Future</h2>
                <a href="/#/about/safety"><button><strong>Safety</strong></button></a>
              </figcaption>
            </figure>

          </article>
        </section>
      </div>
    );
  }

}


export default withRouter(Splash);
