import React from 'react';
import Reference from './reference';

const References = ({references}) => {
  let referenceEls = references.map((reference) => (
    <li key={reference.id}><Reference reference={reference} /></li>
  ));
  let positives = 0;
  let negatives = 0;
  references.forEach((reference) => {
    if (reference.recommended) {
      positives++;
    } else {
      negatives++;
    }
  })
  return (
    <div>
      <h3>{positives} positive reviews</h3>
      <h3>{negatives} negative reviews</h3>
      <ul className="references">
        {referenceEls}
      </ul>
    </div>
  );
};

export default References;
