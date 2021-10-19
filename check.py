import networkx as nx
import matplotlib.pyplot as plt
from networkx.classes.function import degree
import numpy as np
from scipy import stats


def plot_degree_histogram(g, normalized=False):
    aux_y = nx.degree_histogram(g)
    aux_x = np.arange(0, len(aux_y)).tolist()
    n_nodes = g.number_of_nodes()

    if normalized:
        for i in range(len(aux_y)):
            aux_y[i] = aux_y[i]/n_nodes
    plt.title('\nDistribution Of Node Linkages (log-log scale)')
    plt.xlabel('Degree(log scale)')
    plt.ylabel('Number of Nodes(log scale)')
    plt.xscale("log")
    plt.yscale("log")
    plt.plot(aux_x, aux_y, 'o')
    plt.savefig("plot_degree_histogram.png")


def plot_degree_by_id(g):
    degree_node = [g.degree(node) for node in g.nodes]
    degree_node = sorted(degree_node, reverse=True)
    aux_y = degree_node
    aux_x = [i for i in range(len(degree_node))]

    plt.xlabel('node id')
    plt.ylabel('degree')
    plt.plot(aux_x, aux_y, 'o')
    plt.savefig("plot_degree_by_id.png")


# A = np.loadtxt('test.csv', delimiter=' ', dtype='int64')
# G = nx.Graph(A)
G = nx.read_adjlist("test.adjlist", nodetype=int)
plot_degree_histogram(G)
plt.cla()
plot_degree_by_id(G)
