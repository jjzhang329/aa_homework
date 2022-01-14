import React from 'react';

import GiphysIndex from './giphys_index';

export default class GiphysSearch extends React.Component{
    constructor(props){
        super(props)
        this.state = {searchTerm: "golden retriver"}
        this.handleChange = this.handleChange.bind(this)
        this.handleSubmit = this.handleSubmit.bind(this)
    }
    componentDidMount() {
        this.props.fetchSearchGiphys('golden+retriever');
    }
    handleChange(e){
        this.setState({searchTerm: e.target.value})
    }
    handleSubmit(e){
        e.preventDefault()
        let searchTerm = this.state.searchTerm.split(' ').join('+')
        this.props.fetchSearchGiphys(searchTerm)
    }

    render(){
        let { giphys } = this.props;
       return( 
        <div>
            <form>
                <input type="text" value={this.state.searchTerm}
                onChange={this.handleChange}></input>
                <button onClick={this.handleSubmit}>Search</button>
            </form>
            <GiphysIndex giphys={giphys}/>
        </div>
       )
    }
}