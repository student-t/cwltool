# Stubs for galaxy.tools.deps.dependencies (Python 3.4)
#
# NOTE: This dynamically typed stub was automatically generated by stubgen.

from typing import Any

class DependenciesDescription:
    requirements = ...  # type: Any
    installed_tool_dependencies = ...  # type: Any
    def __init__(self, requirements: Any = ..., installed_tool_dependencies: Any = ...) -> None: ...
    def to_dict(self): ...
    @staticmethod
    def from_dict(as_dict): ...
