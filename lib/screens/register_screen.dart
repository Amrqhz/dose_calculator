import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'package:image_picker/image_picker.dart'; // Import the image_picker package
import 'package:google_fonts/google_fonts.dart';
import '../widgets/custom_text_field.dart';
import '../models/auth_service.dart'; // Import your AuthService




class RegisterScreen extends StatefulWidget { // Changed to StatefulWidget
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController(); // Added controllers
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _idController = TextEditingController();
  Uint8List? _idImage;
  final ImagePicker _picker = ImagePicker(); // Instance of ImagePicker
  bool _isLoading = false;

  @override
  void dispose() {
    // Dispose of the controllers when the widget is disposed.
    _emailController.dispose();
    _passwordController.dispose();
    _idController.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null){
      final bytes = await image.readAsBytes();
      setState(() {
        _idImage = bytes;
      });
    }
  }
  

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Builder(
                    builder: (BuildContext context) => TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                      child: Text("Back", style: TextStyle(fontSize: 16, color: Colors.black)),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  'Register',
                  style: GoogleFonts.roboto(
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
        
                  ),
                ),
                const SizedBox(height: 40),
                CustomTextField(
                  label: 'Email:',
                  isPassword: false,
                  controller: _emailController, // Added controller
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  label: 'Password:',
                  isPassword: true,
                  controller: _passwordController, // Added controller
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 6 ){
                      return 'password must be at least 6 characters';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  label: 'ID:',
                  isPassword: false,
                  validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your ID';
                  }
                  return null;
                  },
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: _pickImage,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD8E2DC),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(_idImage == null ? 'Upload your ID image' : 'Image Selected'),
                  ),
                ),
                
                
        
        
        
        
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: _isLoading ? null : () async {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          _isLoading = true;
                        });
                        
                        try {
                          await AuthService().signup(
                            email: _emailController.text.trim(),
                            password: _passwordController.text.trim(),
                            context: context,
                          );
                        } finally {
                          setState(() {
                            _isLoading = false;
                          });
                        }
                      }
                    },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF67B639),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: _isLoading 
                    ? CircularProgressIndicator(color: Colors.white)
                    : const Text(
                        'Confirm',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                ),
                const Spacer(),
                Text(
                  'i am a member!', style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, './login');
                  },
                  child: const Text('Go to login page ', style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
