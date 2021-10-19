from concurrent.futures import ThreadPoolExecutor


N = 2000 # 頂点数, O(N^2)
K = 10   # パーティション数

p_in = 0.5
p_out = 0.05
B = [[p_out for _ in range(K)] for _ in range(K)]
for i in range(K):
    B[i][i] = p_in

# z[i] = j -> 頂点iはパーティションjに属している
# 均等に分ける
z = []
for i in range(K):
    for _ in range(N // K):
        z.append(i)


# multi = np.random.multinomial(N, [1/K for _ in range(K)])
# z = []
# for i, cnt in enumerate(multi):
#     for _ in range(cnt):
#         z.append(i)

l = 2
delta = list(np.random.exponential(l, N))

A = [[0 for _ in range(N)] for _ in range(N)]

def calc(A, B, delta, i, j):
    p = B[z[i]][z[j]] ** (1 + delta[i] + delta[j])
    A[i][j] = stats.bernoulli.rvs(p=p)

tpe = ThreadPoolExecutor(max_workers=None)
for i in range(N):
    for j in range(N):
        tpe.submit(calc, A, B, delta, i, j)

tpe.shutdown()

A = np.array(A)
G = nx.from_numpy_array(A)
plot_degree_histogram(G, normalized=False)

degree_node = [G.degree(node) for node in G.nodes]
degree_node = sorted(degree_node, reverse=True)
aux_y = degree_node
aux_x = [node for node in G.nodes()]

plt.xlabel('node id')
plt.ylabel('degree')
plt.plot(aux_x, aux_y, 'o')
plt.show()