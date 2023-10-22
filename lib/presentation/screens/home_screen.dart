import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eclipse_tz/bloc/home_bloc.dart';
import 'package:eclipse_tz/data/models_album/model_album.dart';
import 'package:eclipse_tz/data/models_user/model_user.dart';
import 'package:eclipse_tz/domain/enum/albums_status_downloading.dart';
import 'package:eclipse_tz/domain/enum/users_status_downloading.dart';
import 'package:eclipse_tz/presentation/core/regular_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 24,
          ),
          child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state.userStatus == UsersStatusDownloading.loading ||
                    state.albumStatus == AlbumStatusDownloading.loading) {
                  return const CustomIndicator();
                } else if (state.userStatus == UsersStatusDownloading.error ||
                    state.albumStatus == AlbumStatusDownloading.error) {
                  return Image.asset(
                    'assets/image/error_picture.jpeg',
                    fit: BoxFit.fitHeight,
                  );
                }
                return BodyWidget(
                  model: state.users,
                  album: state.photos,
                );
              },
            ),
          ),
        ),
    );
  }
}

class BodyWidget extends StatefulWidget {
  const BodyWidget({super.key, required this.model, required this.album});

  final List<ModelUser?>? model;
  final List<ModelAlbum?>? album;

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  final CarouselController _firstButtonCarouselController = CarouselController();
  final CarouselController _secondButtonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselSlider(
          carouselController: _firstButtonCarouselController,
          items: widget.album!
              .map(
                (element) => Builder(
                  builder: (BuildContext context) {
                    return PhotoCard(
                      photo: element?.url ?? '',
                    );
                  },
                ),
              )
              .toList(),
          options: CarouselOptions(
            scrollPhysics: const NeverScrollableScrollPhysics(),
            autoPlay: false,
            viewportFraction: 1,
            height: MediaQuery.of(context).size.height * 0.54,
          ),
        ),
        CarouselSlider(
          carouselController: _secondButtonCarouselController,
          items: widget.model!
              .map(
                (element) => Builder(
                  builder: (BuildContext context) {
                    return DescriptionCard(
                      name: element?.name ?? 'Произошла ошибка, повторите позднее',
                      company: element?.company.name ?? 'Произошла ошибка, повторите позднее',
                      phone: element?.phone ?? 'Произошла ошибка, повторите позднее',
                      email: element?.email ?? 'Произошла ошибка, повторите позднее',
                      website: element?.website ?? 'Произошла ошибка, повторите позднее',
                      username: element?.username ?? 'Произошла ошибка, повторите позднее',
                    );
                  },
                ),
              )
              .toList(),
          options: CarouselOptions(
            autoPlay: false,
            viewportFraction: 1,
            height: MediaQuery.of(context).size.height * 0.2,
            scrollPhysics: const NeverScrollableScrollPhysics(),
          ),
        ),
        const Spacer(),
        SwitchingButton(
          goForward: () {
            _firstButtonCarouselController.nextPage(
                duration: const Duration(
                  milliseconds: 300,
                ),
                curve: Curves.linear);
            _secondButtonCarouselController.nextPage(
                duration: const Duration(
                  milliseconds: 300,
                ),
                curve: Curves.linear);
          },
          goBack: () {
            _firstButtonCarouselController.previousPage(
              duration: const Duration(
                milliseconds: 300,
              ),
              curve: Curves.linear,
            );
            _secondButtonCarouselController.previousPage(
              duration: const Duration(
                milliseconds: 300,
              ),
              curve: Curves.linear,
            );
          },
        ),
      ],
    );
  }
}

class PhotoCard extends StatelessWidget {
  const PhotoCard({super.key, required this.photo});

  final String photo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Галерея'),
          content: SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width * 0.8,
            child: GridView.builder(
              shrinkWrap: false,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      content: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: CachedNetworkImage(
                                    imageUrl: photo,
                                    errorWidget: (BuildContext context, String error, Object object) =>
                                        Image.asset('assets/image/error_picture.jpeg'),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                      ],
                    ),
                  ),
                  child: Card(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: CachedNetworkImage(
                        imageUrl: photo,
                        errorWidget: (BuildContext context, String error, Object object) =>
                            Image.asset('assets/image/error_picture.jpeg'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
          ],
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: CachedNetworkImage(
          imageUrl: photo,
          errorWidget: (BuildContext context, String error, Object object) =>
              Image.asset('assets/image/error_picture.jpeg'),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}

class DescriptionCard extends StatelessWidget {
  const DescriptionCard({
    super.key,
    required this.username,
    required this.company,
    required this.phone,
    required this.email,
    required this.website,
    required this.name,
  });

  final String username;
  final String company;
  final String phone;
  final String email;
  final String website;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        shadows: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 21,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Company: $company',
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Colors.grey,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 8,
            ),
            DescriptionText(
              header: 'username',
              value: username,
            ),
            const SizedBox(
              height: 8,
            ),
            DescriptionText(
              header: 'phone number',
              value: phone,
            ),
            const SizedBox(
              height: 8,
            ),
            DescriptionText(
              header: 'email',
              value: email,
            ),
            const SizedBox(
              height: 8,
            ),
            DescriptionText(
              header: 'website',
              value: website,
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}

class SwitchingButton extends StatelessWidget {
  final Function() goForward;
  final Function() goBack;

  const SwitchingButton({
    super.key,
    required this.goForward,
    required this.goBack,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: goBack,
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        IconButton(
          onPressed: goForward,
          icon: const Icon(
            Icons.arrow_forward_ios,
          ),
        ),
      ],
    );
  }
}



