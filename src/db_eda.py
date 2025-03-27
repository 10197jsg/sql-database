{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 2,
   "metadata": {},
   "outputs": [],
   "source": [
    "import seaborn as sns\n",
    "import matplotlib.pyplot as plt"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "metadata": {},
   "outputs": [
    {
     "ename": "SyntaxError",
     "evalue": "positional argument follows keyword argument (2180589029.py, line 4)",
     "output_type": "error",
     "traceback": [
      "\u001b[0;36m  Cell \u001b[0;32mIn[6], line 4\u001b[0;36m\u001b[0m\n\u001b[0;31m    sns.scatterplot(x = \"Year\", y = \"Country\", data = energy, hp_2015_2019)\u001b[0m\n\u001b[0m                                                                          ^\u001b[0m\n\u001b[0;31mSyntaxError\u001b[0m\u001b[0;31m:\u001b[0m positional argument follows keyword argument\n"
     ]
    }
   ],
   "source": [
    "def print_scatterplot1(energy, hp_2015_2019):\n",
    "    \n",
    "    # Scatterplot for numerical variables\n",
    "    sns.scatterplot(x = \"Year\", y = \"Country\", data = energy, hp_2015_2019)\n",
    "    plt.show()\n",
    "\n",
    "def print_lineplot(energy, hp_2015_2019):\n",
    "\n",
    "    # Lineplot for numerical variables\n",
    "    sns.lineplot(x = \"Year\", y = \"Country\", data = energy, hp_2015_2019)\n",
    "    plt.show()"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "base",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.12.7"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 2
}
