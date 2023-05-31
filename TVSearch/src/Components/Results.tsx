import React from "react";

function Results(props:any) {

    var showInfo = props.data.map((element:any) => {
        return (
            <li key={element.show.id} className ="show">
                <div className = "showBox">
                    <a href={element.show.url} className="showName">{element.show.name}</a>
                </div>
                <div>
                    <img src={element.show.image.medium} alt={element.show.name} />
                </div>
                <div>
                    <a href={element.show.url} className="showGenre">{element.show.genres[0]}</a>
                </div>
            </li>
        )
    });

    return (
        
        <ul className = "showBox">
            {showInfo}
        </ul>        
    );
};

export default Results;

