from VMTranslator import VMTranslator
from CodeWriter import CodeWriter
import os
import sys

def main():

    input_path = sys.argv[1]

    #file input
    if os.path.isfile(input_path):
        # Process the single .vm file
        translator = VMTranslator(input_path)
        translator.translate()
        # Notify the user of successful translation
        output_file = input_path.replace('.vm', '.asm')
        print(f"Output file: {output_file}")

    #dir input
    elif os.path.isdir(input_path):
        # Process all .vm files in the directory
        vm_files = [f for f in os.listdir(input_path) if f.endswith('.vm')]
        # Get the name of the directory
        dir_name = os.path.basename(os.path.normpath(input_path))
        # Output .asm file path
        output_asm_path = os.path.join(input_path, f"{dir_name}.asm")

        # Initialize the combined assembly file and write the bootstrap code
        translator = VMTranslator(output_asm_path)
        translator.writeBootstrap()

        # Translate each .vm file individually
        for vm_file in vm_files:
            vm_file_path = os.path.join(input_path, vm_file)
            asm_file_path = vm_file_path.replace('.vm', '.asm')

            # Translate the .vm file to .asm
            translator = VMTranslator(vm_file_path)
            translator.translate()

            # Append the translated assembly code to the combined output
            with open(asm_file_path, 'r') as asm_file:
                with open(output_asm_path, 'a') as output_asm:
                    output_asm.write(f"// File: {vm_file}\n")
                    output_asm.write(asm_file.read())
                    output_asm.write("\n")

        # Notify the user of the successful translation
        print(f"Output file: {output_asm_path}")




if __name__ == "__main__":
    main()