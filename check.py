import networkx as nx
import matplotlib.pyplot as plt
from networkx.classes.function import degree
import numpy as np
from scipy import stats
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("pin", type=float)
parser.add_argument("pout", type=float)
args = parser.parse_args()

p_in = args.pin
p_out = args.pout


def plot_degree_histogram(g, p_in, p_out, normalized=False):
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
    plt.savefig("{}-{}-plot_degree_histogram.png".format(p_in, p_out))


def plot_degree_by_id(g, p_in, p_out):
    degree_node = [g.degree(node) for node in g.nodes]
    degree_node = sorted(degree_node, reverse=True)
    aux_y = degree_node
    aux_x = [i for i in range(len(degree_node))]

    plt.xlabel('node id')
    plt.ylabel('degree')
    plt.plot(aux_x, aux_y, 'o')
    plt.savefig("{}-{}-plot_degree_by_id.png".format(p_in, p_out))


# A = np.loadtxt('test.csv', delimiter=' ', dtype='int64')
# G = nx.Graph(A)
G = nx.read_adjlist("{}-{}.adjlist".format(p_in, p_out), nodetype=int)
zero_degree_nodes = [node for node in G.nodes() if G.degree(node) == 0]
print("#all nodes:         {}".format(G.number_of_nodes()))
print("#all edges:         {}".format(G.number_of_edges()))
print("#zero-degree nodes: {}".format(len(zero_degree_nodes)))
plot_degree_histogram(G, p_in, p_out)
plt.cla()
plot_degree_by_id(G, p_in, p_out)
