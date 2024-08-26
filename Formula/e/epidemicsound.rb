class Epidemicsound < Formula
    desc "Devtools for EpidemicSound"
    homepage "https://www.epidemicsound.com"
    url "https://github.com/epidemicsound/homebrew-epidemicsound/archive/refs/tags/0.2.tar.gz"
    sha256 "b4cd21847fae2124fc3b2c95f1854af53de96285f0db17f101cc6dd316520012"
    revision 3

    # Keep alphabetised
    depends_on "golang"
    depends_on "kubernetes-cli"
    depends_on "pkl"
    depends_on "pre-commit"
    depends_on "protobuf"
    depends_on "protoc-gen-connect-go"
    depends_on "protoc-gen-go"

    def install
        bin.install "hello-epidemic.sh" => "hello-epidemic"
    end
  end
