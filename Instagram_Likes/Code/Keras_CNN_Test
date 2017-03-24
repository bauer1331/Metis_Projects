from keras.models import Sequential
from keras.layers import Convolution2D, Conv2D, MaxPooling2D, Dense, Flatten, Activation, Dropout, ZeroPadding2D
from keras.preprocessing.image import ImageDataGenerator
from keras import backend as k
k.set_image_dim_ordering('th')

model = Sequential()
model.add(ZeroPadding2D((1,1), input_shape=(3,256,256)))
model.add(Convolution2D(32, (3, 3)))
model.add(Activation('relu'))
model.add(MaxPooling2D(pool_size=(2, 2)))

model.add(Conv2D(32, (3, 3)))
model.add(Activation('relu'))
model.add(MaxPooling2D(pool_size=(2, 2)))

model.add(Conv2D(512, (3, 3)))
model.add(Activation('relu'))
model.add(MaxPooling2D(pool_size=(2, 2), strides=(2,2)))

# the model so far outputs 3D feature maps (height, width, features)

model.add(Flatten())  # this converts our 3D feature maps to 1D feature vectors
model.add(Dense(4096))
model.add(Activation('relu'))
model.add(Dropout(0.5))
model.add(Dense(3))
model.add(Activation('softmax'))


model.compile(loss='categorical_crossentropy',
              optimizer='rmsprop',
              metrics=['accuracy'])



batch_size = 17
num_classes = 3
epochs = 200
data_augmentation = True

# this is the augmentation configuration we will use for training
train_datagen = ImageDataGenerator(
        rescale=1./255,
        shear_range=0.2,
        zoom_range=0.2,
        horizontal_flip=True)

# only rescaling for testing
test_datagen = ImageDataGenerator(rescale=1./255)


train_generator = train_datagen.flow_from_directory(
        '../NoraDanish/train',  # this is the target directory
#         target_size=(150, 150),  # all images will be resized to 150x150
        batch_size=batch_size,
        class_mode='categorical')  # since we use binary_crossentropy loss, we need binary labels

# this is a similar generator, for validation data
validation_generator = test_datagen.flow_from_directory(
        '../NoraDanish/validation',
#         target_size=(150, 150),
        batch_size=batch_size,
        class_mode='categorical')



model.fit_generator(
        train_generator,
        samples_per_epoch=2000 // batch_size,
        nb_epoch=50,
        validation_data=validation_generator,
        nb_val_samples=800//batch_size)
model.save_weights('nora_weights.h5')  # always save your weights after training or during training