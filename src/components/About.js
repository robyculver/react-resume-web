import React, { Component } from 'react';
export default class About extends Component {
  render() {
    let resumeData = this.props.resumeData;
    return (
      <section id="about">
        <div className="row">
          <div className="three columns">
            <img className="profile-pic" src="images/me.jpg" alt="" />
          </div>
        <div className="nine columns main-col">
          <h2>About Me</h2>
          <p>
            {
              resumeData.aboutme
            }
          </p>
          <div className="row">
            <div className="columns contact-details">
              <h2>Contact Details</h2>
                <p className="address">
                <span>{resumeData.name}</span>
                <br></br>
                <span>
                  {resumeData.address}
                </span>
                <br></br>
                <span>
                <a href="mailto:robyculver@gmail.com">robyculver@gmail.com</a><br/>
                <a href="tel:404-435-3248">(404) 435-3248</a><br/>
                <a href={resumeData.gitHubSite}>See Some of My Work on Github</a>
                </span>
                </p>
            </div>
        </div>
        </div>
       </div>
      </section>
    );
  }
}