{ pkgs ? import <nixpkgs> {} }: 

pkgs.mkShell {

  packages = [
    (pkgs.python3.withPackages(p: with p; [

	  # Core
	  pandas
	  numpy
	  scipy

	  #DataViz
	  matplotlib
	  seaborn

	  #NLP
	  nltk
	  textblob

	  #MacLearn
	  scikit-learn

	  # jupyter
	  jupyterlab
	  jupyter-themes

    ]))
  ];
}
