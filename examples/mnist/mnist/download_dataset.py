from torchvision import datasets

ds = datasets.MNIST('./data', train=True, download=True,
                       transform=None)