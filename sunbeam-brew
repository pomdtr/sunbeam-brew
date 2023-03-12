#!/bin/bash

set -euo pipefail

brew formulae | sunbeam query -R '{
    title: .,
    accessories: ["Formulae"],
    detail: {
      command: "brew info \(.)",
    },
    actions: [
      {type: "run", title: "Install formulae", command: "brew install \(.)"}
    ]
  }' | sunbeam query --slurp '{
    type: "list",
    showDetail: true,
    items: .
}'
