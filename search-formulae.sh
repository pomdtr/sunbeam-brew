#!/bin/bash

set -euo pipefail

brew formulae | sunbeam query -R '{
    title: .,
    accessories: ["Formulae"],
    preview: {command: "show-info", with: {formula: .}},
    actions: [
      {type: "run-command", title: "Install formulae", command: "install-formula", with: {formula: .}}
    ]
  }' | sunbeam query --slurp '{
    type: "list",
    showPreview: true,
    items: .
}'
