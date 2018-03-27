import PropTypes from 'prop-types';
import React from 'react';

export default class DisplaySearch extends React.Component {

  // static propTypes = {
  //   name: PropTypes.string.isRequired, // this is passed from the rails view
  // };

  /**
   * @param props - Comes from your rails view.
   */

  constructor(props) {
    super(props);

    this.state = {
      results: this.props,
      searchItem: '',
    };
  }

  render() {
    return (
    <div>
      <h1>Ask Your Question</h1>
      <form>
        <input
          className="search-for"
          type="text"
          value={this.state.searchItem}
        />
      </form>
    </div>
    );
  }
}
