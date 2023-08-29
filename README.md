# Flamegraph

Tutorial of how to use flamegraphs with different languages. Each directory shows how to create and visualize flamegraphs in a specific language. They have a shell script file named `profile`, which you can execute to see an example. Also, use that file as the main documentation for each language, i.e. it tells you how to create a flamegraph in the desired language.

## Requirements

1. c++:
   1. [gcc](https://gcc.gnu.org/);
      1. `sudo dnf install gcc`
   2. [perf](https://perf.wiki.kernel.org/index.php/Main_Page);
      1. `sudo dnf install perf`
2. node:
   1. [node](https://nodejs.org/);
      1. install [nvm](https://github.com/nvm-sh/nvm);
      2. install `node` using `nvm`;
   2. [flamebearer](https://www.npmjs.com/package/flamebearer);
      1. execute in the root of the project: `npm install`;