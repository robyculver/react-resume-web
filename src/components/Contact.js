import React, { Component } from 'react';
export default class ContactUs extends Component {
  render() {
    let resumeData = this.props.resumeData;
    return (
      <section id="contact">
      <div className="row section-head">
        <div className="ten columns">
          <p className="lead">
            Feel free to contact me for any work or suggestions below
          </p>
        </div>
      </div>
      <div className="row">
        <aside className="eigth columns footer-widgets">
        <div className="widget">
          <h4><a href={resumeData.linkedinId}>Find Me on LinkedIn</a></h4>
          <h4><a href="mailto:robyculver@gmail.com">robyculver@gmail.com</a></h4>
          <h4><a href="tel:404-435-3248">(404)435-3248</a></h4>
        </div>
        </aside>
      </div>
      </section>
    );
  }
}