const fs = require('fs');

const arrayFromFile = file => (
  fs.readFileSync(file, 'utf-8').trim()
      .split('\t')
      .map(num => parseInt(num))
);

const distributeBlocks = function(blocks) {
  let count = 0;
  let seen = {};
  let initializedCount;

  while (seen[blocks] != 2) {
    let numUnits = Math.max(...blocks);
    let startIdx = blocks.indexOf(numUnits);

    if (seen[blocks]) {
      seen[blocks] += 1;
      initializedCount = true;
    } else {
      seen[blocks] = 1;
    }

    blocks[startIdx] = 0;

    for (let i = 1; i <= numUnits; i++) {
      let idx = (startIdx + i) % blocks.length;
      blocks[idx] += 1;
    }

    count = (initializedCount ? count + 1 : count);
  }

  return count;
};

const findDistributionCount = function(file) {
  const blocks = arrayFromFile(file);

  return distributeBlocks(blocks);
};


console.log(findDistributionCount('day6.txt'));
