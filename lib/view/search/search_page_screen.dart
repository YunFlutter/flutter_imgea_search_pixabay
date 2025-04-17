import 'package:flutter/material.dart';
import 'package:flutter_imgea_search_pixabay/domin/model/image_model.dart';
import 'package:flutter_imgea_search_pixabay/view/search/search_page_view_model.dart';
import 'package:flutter_imgea_search_pixabay/view/search_detail/search_detail_screen.dart';

class SearchPageScreen extends StatefulWidget {
  final SearchPageViewModel viewModel;

  SearchPageScreen({super.key, required this.viewModel});

  @override
  State<SearchPageScreen> createState() => _SearchPageScreenState();
}

class _SearchPageScreenState extends State<SearchPageScreen> {
  final TextEditingController _controller = TextEditingController();

  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      print(_controller.text);
      widget.viewModel.searchTextChange(text: _controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: widget.viewModel,
      builder: (context, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              spacing: 30,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Search Image",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: ListenableBuilder(
                    listenable: widget.viewModel,
                    builder: (context, snapshot) {
                      return widget.viewModel.state.imageList.isEmpty ? Center(
                        child: Text('검색 결과 없음'),
                      ) : GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children:
                            widget.viewModel.state.imageList
                                .map(
                                  (ImageModel items) => GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => SearchDetailScreen(model: items)),
                                      );
                                    },
                                    child: Image.network(
                                      items.previewURL,
                                      width: items.previewImageWidth.toDouble(),
                                      height: items.previewImageHeight.toDouble(),
                                    ),
                                  ),
                                )
                                .toList(),
                      );
                    }
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
